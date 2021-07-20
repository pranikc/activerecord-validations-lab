class TitleValidator < ActiveModel::Validator
    def validate(record)
        if !record.title || !(["Won't Believe", "Secret", "Top", "Guess"].any? { |fragment| record.title.include? fragment })
            record.errors[:title] << "ain't clickbait :("
        end
    end
end
